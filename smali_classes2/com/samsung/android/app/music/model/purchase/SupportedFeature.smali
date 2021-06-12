.class public Lcom/samsung/android/app/music/model/purchase/SupportedFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_VALUE_NO:Ljava/lang/String; = "0"

.field private static final IS_VALUE_YES:Ljava/lang/String; = "1"


# instance fields
.field private adYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/SupportedFeature$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAd()Z
    .locals 2

    const-string v0, "1"

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSupportedFeature(Lcom/samsung/android/app/music/model/purchase/SupportedFeature;)Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    iget-object p1, p1, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[adYn - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->adYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
