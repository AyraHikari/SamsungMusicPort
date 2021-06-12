.class final Lcom/samsung/android/app/music/background/BeyondBackgroundController$onMetadataChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundController;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onMetadataChanged$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    const-string p1, "tintInfo"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onMetadataChanged$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    move-result-object p1

    .line 869
    iget p2, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    .line 870
    iget p3, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    const/4 p4, 0x1

    .line 868
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(IIZ)V

    return-void
.end method
