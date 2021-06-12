.class Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private final mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog;)V
    .locals 3

    .line 829
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 830
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 831
    :goto_0
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MediaRouteCastDialog"

    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 832
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 835
    :cond_1
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 836
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method private openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 933
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content"

    .line 934
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file"

    .line 935
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 940
    sget v0, Landroid/support/v7/app/MediaRouteCastDialog;->CONNECTION_TIMEOUT_MILLIS:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 941
    sget v0, Landroid/support/v7/app/MediaRouteCastDialog;->CONNECTION_TIMEOUT_MILLIS:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 942
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    .line 936
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 944
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    .line 855
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 856
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 857
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eqz p1, :cond_c

    .line 860
    :try_start_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    :try_start_1
    const-string v3, "MediaRouteCastDialog"

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_1

    .line 896
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 865
    :cond_2
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 866
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 867
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 868
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_9

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v4, :cond_3

    goto :goto_1

    .line 873
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 876
    :catch_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 877
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v4, :cond_5

    :try_start_6
    const-string p1, "MediaRouteCastDialog"

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    .line 896
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    move-object p1, v4

    goto :goto_3

    :catch_4
    move-exception v3

    move-object p1, v4

    goto :goto_2

    :cond_5
    move-object p1, v4

    .line 883
    :goto_0
    :try_start_8
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 884
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/MediaRouteCastDialog;->getDesiredArtHeight(II)I

    move-result v4

    .line 885
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    .line 886
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 887
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->isCancelled()Z

    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    .line 896
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_6
    return-object v2

    .line 890
    :cond_7
    :try_start_a
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz p1, :cond_8

    .line 896
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_8
    move-object p1, v3

    goto :goto_5

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    :cond_a
    return-object v2

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_3

    :catch_8
    move-exception v3

    move-object p1, v2

    :goto_2
    :try_start_d
    const-string v4, "MediaRouteCastDialog"

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz p1, :cond_c

    .line 896
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz p1, :cond_b

    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 898
    :catch_9
    :cond_b
    throw v0

    :catch_a
    :cond_c
    :goto_4
    move-object p1, v2

    .line 902
    :goto_5
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v0, "MediaRouteCastDialog"

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t use recycled bitmap: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    if-eqz p1, :cond_f

    .line 906
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 908
    new-instance v2, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 910
    :cond_e
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    :goto_6
    iput v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mBackgroundColor:I

    :cond_f
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 824
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 840
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 844
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 917
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;

    .line 918
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 919
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 921
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iput-object p1, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 922
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    iput-object v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    .line 923
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->mBackgroundColor:I

    iput v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    .line 924
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    .line 926
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 824
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteCastDialog;->clearLoadedBitmap()V

    return-void
.end method
