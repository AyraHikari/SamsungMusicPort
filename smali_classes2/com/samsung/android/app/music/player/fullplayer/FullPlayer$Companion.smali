.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 939
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V
    .locals 0

    .line 939
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-FullPlayer"

    .line 955
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
