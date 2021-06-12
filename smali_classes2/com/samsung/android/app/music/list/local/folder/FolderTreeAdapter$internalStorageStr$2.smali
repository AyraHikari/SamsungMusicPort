.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
