.class public Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field trackId:Ljava/lang/String;

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackId:Ljava/lang/String;

    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
