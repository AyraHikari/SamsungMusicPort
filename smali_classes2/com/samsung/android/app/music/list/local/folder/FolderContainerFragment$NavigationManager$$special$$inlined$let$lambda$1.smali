.class final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$$special$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$$special$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    const-string v1, "ROOT_BUCKET_ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;Ljava/lang/String;)V

    return-void
.end method
