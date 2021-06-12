.class public Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
.super Lcom/samsung/android/app/music/milk/billing/PurchasableItem;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;-><init>(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
