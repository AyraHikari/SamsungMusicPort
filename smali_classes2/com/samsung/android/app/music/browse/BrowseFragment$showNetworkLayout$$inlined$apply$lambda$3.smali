.class final Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/BrowseFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    iput p2, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->a(Lcom/samsung/android/app/music/browse/BrowseFragment;)Lcom/samsung/android/app/music/browse/BrowseBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Z)V

    :cond_0
    return-void
.end method
