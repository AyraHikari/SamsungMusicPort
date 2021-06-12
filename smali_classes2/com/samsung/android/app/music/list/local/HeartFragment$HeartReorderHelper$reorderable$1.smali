.class public final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->c(I)Ljava/lang/Integer;

    move-result-object p1

    .line 390
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->c(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a(Landroid/content/Context;II)Z

    const-string p1, "HTIT"

    const-string p2, "Reorder"

    .line 396
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromOrder["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] and toOrder["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] are invalid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
