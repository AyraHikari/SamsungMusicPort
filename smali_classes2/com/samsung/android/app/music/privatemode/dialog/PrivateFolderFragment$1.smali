.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 88
    iget-object p3, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 90
    iget-object p3, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    const-string p4, "_data"

    .line 91
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, "path"

    .line 94
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p3, -0x1

    .line 97
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
