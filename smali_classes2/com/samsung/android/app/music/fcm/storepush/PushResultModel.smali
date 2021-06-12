.class public Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field action:I

.field campaignId:Ljava/lang/String;

.field cause:Ljava/lang/String;

.field seq:Ljava/lang/String;

.field uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->campaignId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->seq:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->uniqueId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    .line 31
    iget-object v0, p1, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->campaignId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->campaignId:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->seq:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->seq:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->uniqueId:Ljava/lang/String;

    .line 34
    iget v0, p1, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->action:I

    iput v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    .line 35
    iget-object p1, p1, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->cause:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setResultAction(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    return-void
.end method

.method public setResultAction(ILjava/lang/String;)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->campaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->campaignId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->seq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->cause:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
