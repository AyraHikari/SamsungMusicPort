.class public interface abstract Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;
    }
.end annotation


# static fields
.field public static final Store_Push_Logging_API:Ljava/lang/String; = "https://log.glb.samsungmilkradio.com"


# virtual methods
.method public abstract sendPushLogging(Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "logging/push/campaign"
    .end annotation
.end method
