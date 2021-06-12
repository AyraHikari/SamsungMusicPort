.class public Lcom/samsung/android/app/music/model/purchase/DrmSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/DrmSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field endDate:Ljava/lang/String;

.field orderId:Ljava/lang/String;

.field startDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/DrmSubscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    return-void
.end method

.method private changeDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "yyyy-MM-dd"

    .line 84
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 90
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public toSimpleSubscription()Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;
    .locals 4

    const-string v0, ""

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->orderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->startDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->endDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
