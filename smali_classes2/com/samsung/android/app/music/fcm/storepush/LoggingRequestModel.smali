.class public Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private pushResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;
    .locals 2

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;-><init>()V

    if-eqz p0, :cond_0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;->pushResult:Ljava/util/ArrayList;

    .line 20
    iget-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;->pushResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
