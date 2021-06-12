.class public final Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-PlayerUIManager"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-PlayerUIManager"

    .line 100
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
