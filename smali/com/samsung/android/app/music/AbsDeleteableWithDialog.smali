.class public abstract Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field private final mDeletePopupMessageId:I
    .annotation build Landroid/support/annotation/PluralsRes;
    .end annotation
.end field

.field protected mFragment:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/support/v4/app/Fragment;

    .line 55
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 56
    iput p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    .line 57
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->initDeleteConfirmDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 48
    iput p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->initDeleteConfirmDialog()V

    return-void
.end method

.method private initDeleteConfirmDialog()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V

    :cond_1
    const-string v1, "Ui"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " initDeleteConfirmDialog() | DeleteConfirmDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | caller: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeleteItemIds()[J

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->showDeleteConfirmDialog([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItemsInternal(Landroid/app/Activity;[J)V

    :cond_0
    return-void
.end method

.method protected abstract deleteItemsInternal(Landroid/app/Activity;[J)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract getDeleteItemCount()I
.end method

.method protected abstract getDeleteItemIds()[J
.end method

.method protected getDeletePopupMessageId()I
    .locals 1
    .annotation build Landroid/support/annotation/PluralsRes;
    .end annotation

    .line 123
    iget v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    return v0
.end method

.method protected getScreenId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onCreateDialogMessage([J)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final showDeleteConfirmDialog([J)Z
    .locals 7

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeleteItemCount()I

    move-result v0

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->onCreateDialogMessage([J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeletePopupMessageId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    sget-object v2, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    return v2
.end method
