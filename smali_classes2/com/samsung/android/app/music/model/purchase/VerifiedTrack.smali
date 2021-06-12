.class public Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;
.super Lcom/samsung/android/app/music/model/SimpleTrack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/purchase/VerifiedTrack$OrderType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discountPrice:J

.field private downloadExpiredTime:Ljava/lang/String;

.field private paymentPrice:J

.field private sellingPrice:J

.field private statusCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->statusCode:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->downloadExpiredTime:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->sellingPrice:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->discountPrice:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->paymentPrice:J

    return-void
.end method

.method public static convertToDownloadBasket(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 4

    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 125
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "track_id"

    const-string p2, "source_id"

    .line 127
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_number"

    const-string p2, "track_number"

    .line 129
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "codec"

    const-string p2, "mp3"

    .line 131
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bitrate"

    const-string p2, "320"

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "status_code"

    const-string p2, "status_code"

    .line 134
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expire_time"

    const-string p2, "expire_time"

    .line 136
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "payment_price"

    const-string p2, "payment_price"

    .line 138
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 137
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
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

    .line 81
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDiscountPrice()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->discountPrice:J

    return-wide v0
.end method

.method public getDownloadExpiredTime()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->downloadExpiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPrice()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->paymentPrice:J

    return-wide v0
.end method

.method public getSellingPrice()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->sellingPrice:J

    return-wide v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 115
    invoke-super {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "track_number"

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "status_code"

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expire_time"

    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->downloadExpiredTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payment_price"

    .line 119
    iget-wide v2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->paymentPrice:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->statusCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->downloadExpiredTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->sellingPrice:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->discountPrice:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->paymentPrice:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
