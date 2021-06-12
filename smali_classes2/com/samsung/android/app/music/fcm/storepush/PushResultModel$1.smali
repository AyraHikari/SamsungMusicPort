.class final Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
    .locals 1

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
    .locals 0

    .line 78
    new-array p1, p1, [Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$1;->newArray(I)[Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object p1

    return-object p1
.end method
