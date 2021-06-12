.class final Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 5

    .line 25
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 26
    new-instance v1, Ljava/io/InputStreamReader;

    .line 27
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/io/InputStream;

    const-string v3, "iso-8859-1"

    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    check-cast v1, Ljava/io/Reader;

    .line 25
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 30
    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v2, v0

    check-cast v2, Ljava/io/BufferedReader;

    .line 31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_1

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    int-to-char v3, v3

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-gtz v3, :cond_0

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, ""

    :goto_2
    return-object v2
.end method
