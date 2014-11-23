runal<- function() {
        options(stringsAsFactors = FALSE)
        features<-read.table("features.txt")
        testdat1<-read.table("./test/subject_test.txt",header = FALSE)
        testdat2<-read.table("./test/X_test.txt",header = FALSE)
        testdat3<-read.table("./test/y_test.txt",header = FALSE)
        traindat1<-read.table("./train/subject_train.txt",header = FALSE)
        traindat2<-read.table("./train/X_train.txt",header = FALSE)
        traindat3<-read.table("./train/y_train.txt",header = FALSE)
        testdata<-cbind(testdat1,testdat3,testdat2,"test")
        names(testdata)[1:2]<-c("subject","activity")
        names(testdata)[3:563]<-features[,2]
        names(testdata)[564]<-"test.or.train"
        traindata<-cbind(traindat1,traindat3,traindat2,"train")
        names(traindata)[1:2]<-c("subject","activity")
        names(traindata)[3:563]<-features[,2]
        names(traindata)[564]<-"test.or.train"
        totaldata<-rbind(testdata,traindata)
        
        meansdData<-totaldata[,c(1:8,43:48,83:88,123:128,163:168,203:204,216:217,
                                 229:230,242:243,255:256,268:273,347:352,426:431,
                                 505:506,518:519,531:532,544:545,ncol(totaldata))]
      for (i in 1:nrow(meansdData)){
              if (meansdData[i,2] == "1") {meansdData[i,2]<-"Walking"}
              if (meansdData[i,2] == "2") {meansdData[i,2]<-"Walking Upstairs"}
              if (meansdData[i,2] == "3") {meansdData[i,2]<-"Walking Downstairs"}
              if (meansdData[i,2] == "4") {meansdData[i,2]<-"Sitting"}
              if (meansdData[i,2] == "5") {meansdData[i,2]<-"Standing"}
              if (meansdData[i,2] == "6") {meansdData[i,2]<-"Laying"}
      }
      #return(meansdData)
      activity<-c("Walking","Walking Upstairs","Walking Downstairs","Sitting",
                  "Standing","Laying")
      summData<-data.frame()
      for (i in 1:30){
              for(j in activity) {
                      colmeans<-colMeans(meansdData[(meansdData$subject==i)&(meansdData$activity==j),3:(ncol(meansdData)-1)])
                      rowtotal<-c(i,j,colmeans)
                      summData<-rbind(summData,rowtotal)
              }
      }
      names(summData)<-c("Subject","Activity",
      "Body Acceleration mean - X",
      "Body Acceleration mean - Y",
      "Body Acceleration mean - Z",
      "Body Acceleration Standard Deviation - X",
      "Body Acceleration Standard Deviation - Y",
      "Body Acceleration Standard Deviation - Z",
      "Gravity Acceleration mean - X",
      "Gravity Acceleration mean - Y",
      "Gravity Acceleration mean - Z",
      "Gravity Acceleration Standard Deviation - X",
      "Gravity Acceleration Standard Deviation - Y",
      "Gravity Acceleration Standard Deviation - Z",
      "Body Acceleration Jerk mean - X",
      "Body Acceleration Jerk mean - Y",
      "Body Acceleration Jerk mean - Z",
      "Body Acceleration Jerk Standard Deviation - X",
      "Body Acceleration Jerk Standard Deviation - Y",
      "Body Acceleration Jerk Standard Deviation - Z",
      "Body Gyro mean - X",
      "Body Gyro mean - Y",
      "Body Gyro mean - Z",
      "Body Gyro Standard Deviation - X",
      "Body Gyro Standard Deviation - Y",
      "Body Gyro Standard Deviation - Z",
      "Body Gyro Jerk mean - X",
      "Body Gyro Jerk mean - Y",
      "Body Gyro Jerk mean - Z",
      "Body Gyro Jerk Standard Deviation - X",
      "Body Gyro Jerk Standard Deviation - Y",
      "Body Gyro Jerk Standard Deviation - Z",
      "Body Acceleration Magnitude mean",
      "Body Acceleration Magnitude Standard Deviation",
      "Gravity Acceleration Magnitude mean",
      "Gravity Acceleration Magnitude Standard Deviation",
      "Body Acceleration Jerk Magnitude mean",
      "Body Acceleration Jerk Magnitude Standard Deviation",
      "Body Gyro Magnitude mean",
      "Body Gyro Magnitude Standard Deviation",
      "Body Gyro Jerk Magnitude mean",
      "Body Gyro Jerk Magnitude Standard Deviation",
      "FFT Body Acceleration mean - X",
      "FFT Body Acceleration mean - Y",
      "FFT Body Acceleration mean - Z",
      "FFT Body Acceleration Standard Deviation - X",
      "FFT Body Acceleration Standard Deviation - Y",
      "FFT Body Acceleration Standard Deviation - Z",
      "FFT Body Acceleration Jerk mean - X",
      "FFT Body Acceleration Jerk mean - Y",
      "FFT Body Acceleration Jerk mean - Z",
      "FFT Body Acceleration Jerk Standard Deviation - X",
      "FFT Body Acceleration Jerk Standard Deviation - Y",
      "FFT Body Acceleration Jerk Standard Deviation - Z",
      "FFT Body Gyro mean - X",
      "FFT Body Gyro mean - Y",
      "FFT Body Gyro mean - Z",
      "FFT Body Gyro Standard Deviation - X",
      "FFT Body Gyro Standard Deviation - Y",
      "FFT Body Gyro Standard Deviation - Z",
      "FFT Body Acceleration Magnitude mean",
      "FFT Body Acceleration Magnitude Standard Deviation",
      "FFT Body Acceleration Jerk Magnitude mean",
      "FFT Body Acceleration Jerk Magnitude Standard Deviation",
      "FFT Body Gyro Magnitude mean",
      "FFT Body Gyro Magnitude Standard Deviation",
      "FFT Body Gyro Jerk Magnitude mean",
      "FFT Body Gyro Jerk Magnitude Standard Deviation")
      summData<-summData[order(as.numeric(summData$Subject)),]
      return(summData)
}