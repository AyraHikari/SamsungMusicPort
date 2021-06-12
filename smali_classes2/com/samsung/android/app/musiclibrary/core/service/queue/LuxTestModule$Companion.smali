.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
