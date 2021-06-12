.class public Lcom/samsung/android/app/music/model/milkevent/EventPopup;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private againShowTime:J

.field private checkMarketing:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private popupCombination:Ljava/lang/String;

.field private popupDomainType:Ljava/lang/String;

.field private popupId:Ljava/lang/String;

.field private popupLinkUrl:Ljava/lang/String;

.field private popupTitle:Ljava/lang/String;

.field private popupType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/model/milkevent/EventPopup$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkevent/EventPopup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->checkMarketing:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->againShowTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    .line 40
    iput-wide p8, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->againShowTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckMarketing()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->checkMarketing:Ljava/lang/String;

    return-object v0
.end method

.method public getDoNotShowTime()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->againShowTime:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupCombination()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupDomainType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupLinkUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupTitle()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupType()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    return-object v0
.end method

.method public setDoNotShowTime(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->againShowTime:J

    return-void
.end method

.method public setPopupId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    return-void
.end method

.method public setPopupLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 64
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->checkMarketing:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->againShowTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
