.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;-><init>()V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 8

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v7, 0x0

    move v1, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->g(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    move-result-object p1

    .line 107
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 108
    :cond_0
    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->c(I)Ljava/lang/String;

    move-result-object p4

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->d(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-virtual {p1, p3, p4, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
