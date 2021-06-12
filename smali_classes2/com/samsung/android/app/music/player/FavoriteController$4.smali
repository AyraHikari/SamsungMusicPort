.class Lcom/samsung/android/app/music/player/FavoriteController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/FavoriteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/FavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteController;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$4;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0
    .param p4    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$4;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    iget p2, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/FavoriteController;->a(I)V

    return-void
.end method
