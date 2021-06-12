.class public final Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/UncaughtException;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final testConsumeAllMemory()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string v1, "ConsumeAllMemory start"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const v1, 0xf4240

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_0

    .line 127
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x400

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v5, -0x1000000

    .line 128
    invoke-virtual {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    const-string v5, "element"

    .line 129
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "TEMP"

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConsumeAllMemory progress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    .line 135
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string v2, "ConsumeAllMemory end"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    return-object v0
.end method
