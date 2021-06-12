.class final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    const-string v1, "v"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
