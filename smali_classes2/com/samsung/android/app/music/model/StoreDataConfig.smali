.class public Lcom/samsung/android/app/music/model/StoreDataConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/StoreDataConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private copyRight:Ljava/lang/String;

.field private musicMembersPrebody:Ljava/lang/String;

.field private preAudioAdIntervalTime:I

.field private purchasePopupText:Ljava/lang/String;

.field private videoAdDefaultCp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/model/StoreDataConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/StoreDataConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/StoreDataConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->copyRight:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->purchasePopupText:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->musicMembersPrebody:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->videoAdDefaultCp:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->preAudioAdIntervalTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->copyRight:Ljava/lang/String;

    return-object v0
.end method

.method public getMembersPrebody()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->musicMembersPrebody:Ljava/lang/String;

    return-object v0
.end method

.method public getPreAudioAdIntervalTime()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->preAudioAdIntervalTime:I

    return v0
.end method

.method public getPurchasePopupText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->purchasePopupText:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdDefaultCp()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->videoAdDefaultCp:I

    return v0
.end method

.method public setPreAudioAdIntervalTime(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->preAudioAdIntervalTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", copyRight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->copyRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchasePopupText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->purchasePopupText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", musicMembersPrebody : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->musicMembersPrebody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoAdDefaultCp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->videoAdDefaultCp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preAudioAdIntervalTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->preAudioAdIntervalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 32
    iget-object p2, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->copyRight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->purchasePopupText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->musicMembersPrebody:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget p2, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->videoAdDefaultCp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget p2, p0, Lcom/samsung/android/app/music/model/StoreDataConfig;->preAudioAdIntervalTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
