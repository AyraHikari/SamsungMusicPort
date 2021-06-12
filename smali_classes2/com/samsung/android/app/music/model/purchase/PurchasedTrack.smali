.class public Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;
.super Lcom/samsung/android/app/music/model/SimpleTrack;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadExpiredTime:Ljava/lang/String;

.field private localTrackExt:Ljava/lang/String;

.field private localTrackExt320k:Ljava/lang/String;

.field private orderDate:Ljava/lang/String;

.field private orderDateLocal:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private trackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt320k:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->downloadExpiredTime:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderDate:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderDateLocal:Ljava/lang/String;

    return-void
.end method

.method public static convertToPurchasedTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 4

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 119
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "track_id"

    const-string p2, "source_id"

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "download_expired_time"

    const-string p2, "download_expired_time"

    .line 123
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "local_track_ext"

    const-string p2, "local_track_ext"

    .line 125
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "local_track_ext_320k"

    const-string p2, "local_track_ext_320k"

    .line 127
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orderId"

    const-string p2, "orderId"

    .line 129
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "order_date"

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "order_date"

    .line 131
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "order_date_local"

    if-nez p1, :cond_1

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_1
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "order_date_long"

    .line 136
    invoke-static {p1}, Lcom/samsung/android/app/music/util/DateTimeUtils;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 135
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "track_type"

    const-string p2, "track_type"

    .line 138
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 137
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static createContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 4

    .line 144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "audio_id"

    const-wide/16 v2, -0x1

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "source_id"

    .line 146
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "download_expired_time"

    const-string v1, ""

    .line 147
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_track_ext"

    const-string v1, ""

    .line 148
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_track_ext_320k"

    const-string v1, ""

    .line 149
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "orderId"

    .line 150
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "order_date"

    .line 151
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "track_type"

    .line 152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public getDownloadExpiredTime()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->downloadExpiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTrackExt()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTrackExt320k()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt320k:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderId:Ljava/lang/String;

    return-void
.end method

.method public toContentValues(I)Landroid/content/ContentValues;
    .locals 3

    .line 107
    invoke-super {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "download_expired_time"

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->getDownloadExpiredTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_track_ext"

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->getLocalTrackExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_track_ext_320k"

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->getLocalTrackExt320k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderId"

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_date"

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->getOrderDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_type"

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " orderId  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->localTrackExt320k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->downloadExpiredTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->orderDateLocal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
