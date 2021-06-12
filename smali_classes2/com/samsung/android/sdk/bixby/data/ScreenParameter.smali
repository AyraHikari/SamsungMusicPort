.class public Lcom/samsung/android/sdk/bixby/data/ScreenParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->g:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 112
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 117
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
