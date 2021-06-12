.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    const-string v0, "v"

    .line 1059
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    .line 1060
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1061
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, p1

    .line 1059
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-object p2
.end method
