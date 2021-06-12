.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/ParcelFileDescriptor;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/graphics/Bitmap$Config;

.field private final h:Ljava/io/File;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)V

    sput-object v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 249
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 196
    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 197
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object p1

    array-length p1, p1

    .line 199
    :cond_1
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    .line 217
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e:I

    .line 218
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f:I

    .line 219
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    .line 220
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    .line 222
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIILandroid/graphics/Bitmap$Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    const/high16 v0, 0x10000000

    .line 206
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    .line 207
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e:I

    .line 208
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f:I

    .line 209
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    .line 210
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    .line 211
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private static a(II)I
    .locals 2

    const/4 v0, 0x1

    if-le p1, p0, :cond_0

    .line 137
    div-int/lit8 p1, p1, 0x2

    .line 144
    :goto_0
    div-int v1, p1, v0

    if-lt v1, p0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static a(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const/4 v0, 0x0

    .line 226
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    .line 227
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 228
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 229
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 230
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8

    .line 159
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 160
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8

    .line 152
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 153
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 154
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method public static a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 7

    .line 182
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->i()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d()I

    move-result v3

    move-object v0, v6

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)V

    return-object v6
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x0

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 171
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_1

    :catch_2
    move-exception v2

    const/4 v4, 0x0

    .line 169
    :goto_0
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :goto_1
    if-eqz v2, :cond_0

    .line 173
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v1

    const/4 v3, 0x0

    goto :goto_3

    :catch_5
    move-exception v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    const-string v0, "SMUSIC-ArtWork"

    const-string v2, "ServiceArtworkLoadingResult.open failed"

    .line 174
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    move v8, v3

    move v7, v4

    .line 176
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v5, v0

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;-><init>(Ljava/io/File;IIILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method private i()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    return v0
.end method

.method public a(I)Landroid/graphics/Bitmap;
    .locals 7

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->i:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->i:Z

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->i()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g:Landroid/graphics/Bitmap$Config;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b()I

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    const/4 v5, 0x0

    .line 121
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 126
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 126
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_4
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    const-string v0, "SMUSIC-ArtWork"

    const-string v2, "getBitmap failed"

    .line 128
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 102
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This ServiceArtworkLoadingResult was already closed. Call getBitmap method only once and only from client process!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    return-object v0
.end method

.method h()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceArtworkLoadingResult{pfd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 242
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
