.class public Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ParceledListSlice"


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 9

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    if-gtz v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 98
    :cond_1
    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readCreator(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 106
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-lt v2, v0, :cond_5

    return-void

    .line 117
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_3
    if-ge v2, v0, :cond_8

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 124
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    .line 126
    :try_start_0
    invoke-interface {p1, v7, v5, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-ge v2, v0, :cond_7

    .line 131
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 134
    invoke-static {v6, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readCreator(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_6

    .line 136
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 138
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    :cond_7
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "ParceledListSlice"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure retrieving array; only received "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_8
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in list of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-interface {v2}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 189
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->writeParcelableCreator(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    .line 192
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 195
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    invoke-interface {v4, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v0, :cond_1

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ILjava/lang/Class;I)V

    .line 240
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method
