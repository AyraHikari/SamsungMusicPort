.class public Lcom/samsung/android/sdk/bixby/data/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
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

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby/data/CHObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/Parameter$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->a:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->b:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->d:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->e:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    const-class v3, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 190
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    .line 192
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->g:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->h:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 195
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->i:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->a:Ljava/lang/String;

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

    .line 109
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->d:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->g:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->h:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 205
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 211
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 213
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 216
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->i:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const/4 p2, 0x2

    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/data/Parameter;->i:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    return-void
.end method
