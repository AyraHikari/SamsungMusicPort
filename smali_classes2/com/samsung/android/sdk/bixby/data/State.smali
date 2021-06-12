.class public Lcom/samsung/android/sdk/bixby/data/State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->b:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->c:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->g:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->h:Ljava/lang/Boolean;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->i:Ljava/lang/Boolean;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->j:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->b:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/State;->c:Ljava/lang/Boolean;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/State;->d:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/State;->e:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/samsung/android/sdk/bixby/data/State;->f:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/samsung/android/sdk/bixby/data/State;->g:Ljava/lang/Boolean;

    .line 56
    iput-object p8, p0, Lcom/samsung/android/sdk/bixby/data/State;->h:Ljava/lang/Boolean;

    .line 57
    iput-object p9, p0, Lcom/samsung/android/sdk/bixby/data/State;->i:Ljava/lang/Boolean;

    .line 58
    iput-object p10, p0, Lcom/samsung/android/sdk/bixby/data/State;->j:Ljava/lang/String;

    .line 59
    iput-object p11, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 237
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->b:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->c:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 240
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->g:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 244
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->h:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->i:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 246
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->k:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
