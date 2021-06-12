.class final Lcom/samsung/android/app/music/activity/BaseServiceActivity$setContentView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$setContentView$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$setContentView$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onWindowInsetsChanged(Landroid/view/WindowInsets;)V

    return-object p2
.end method
