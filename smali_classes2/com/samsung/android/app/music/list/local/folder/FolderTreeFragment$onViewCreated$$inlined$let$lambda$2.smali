.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewEnabled(Z)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v1, 0x3ebd70a4    # 0.37f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->e(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
