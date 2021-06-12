.class public Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/data/DataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    .line 54
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->b:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
