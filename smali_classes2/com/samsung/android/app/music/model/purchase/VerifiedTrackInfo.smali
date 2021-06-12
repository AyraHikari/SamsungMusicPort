.class public Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACK_DOWNLOAD_VERIFICATION_MANDATORY_PARAMETER_EMPTY:I = 0x44e

.field public static final TRACK_DOWNLOAD_VERIFICATION_ORDER_ERROR:I = 0x2198


# instance fields
.field private drmSubscription:Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 37
    const-class v0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

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

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDrmSubscription()Lcom/samsung/android/app/music/model/purchase/DrmSubscription;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

    return-object v0
.end method

.method public getSubscriptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVerifiedTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTrackDownloadVerificationList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;

    .line 101
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toContentValuesOrderArray(Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 4

    const-string v0, "@"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "serializedIds"

    .line 112
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 113
    aput-object v2, v0, p1

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;

    .line 116
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
