.class public Lcom/samsung/android/sdk/bixby/data/CHObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/CHObject$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->c:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/CHObject;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
