.class public Lcom/samsung/android/app/music/model/ImageUrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImageUrl"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/model/ImageUrl$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/ImageUrl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/ImageUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/model/ImageUrl;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/ImageUrl;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ImageUrl;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ImageUrl;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget p2, p0, Lcom/samsung/android/app/music/model/ImageUrl;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ImageUrl;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
