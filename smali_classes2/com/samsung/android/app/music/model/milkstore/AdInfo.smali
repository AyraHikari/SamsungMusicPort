.class public Lcom/samsung/android/app/music/model/milkstore/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bgImgUrl:Ljava/lang/String;

.field private impsUrl:Ljava/lang/String;

.field private webLinkUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/AdInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/AdInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->bgImgUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->webLinkUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->impsUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBgImgUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->bgImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImpsUrl()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->impsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLinkUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->webLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 38
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->bgImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->webLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/AdInfo;->impsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
