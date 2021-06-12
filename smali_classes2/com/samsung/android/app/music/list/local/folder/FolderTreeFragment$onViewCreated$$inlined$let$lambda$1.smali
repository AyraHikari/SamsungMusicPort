.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n_()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->o_()V

    return-void

    :cond_0
    return-void
.end method
