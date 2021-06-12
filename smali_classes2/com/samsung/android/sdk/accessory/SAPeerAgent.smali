.class public Lcom/samsung/android/sdk/accessory/SAPeerAgent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Peeragent:Framework version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d:Ljava/lang/String;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-object v0
.end method

.method final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->d()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x100000

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->e()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xfffa

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Peer ID - this:null PeerAgent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Peer ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PeerAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Container ID - this:null PeerAgent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Container ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PeerAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "[SA_SDK]SAPeerAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Accessory ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PeerAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->a()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method final f()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f:J

    return-wide v0
.end method

.method final g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->b()J

    move-result-wide v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PeerAgent - id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "containerId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendlyName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Profile Version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MexSupport:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SocketSupport:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->e:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const-string p2, "[SA_SDK]SAPeerAgent"

    const-string v0, "mCompatibilityVersion = 0"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/k;->e()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/k;->g()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/k;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
