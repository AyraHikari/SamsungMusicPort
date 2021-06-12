.class final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$moveItemToLast$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$moveItemToLast$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$moveItemToLast$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
