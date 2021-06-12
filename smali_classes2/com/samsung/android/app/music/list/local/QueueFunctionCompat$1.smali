.class Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;->a:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;->a:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;->a:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x7be

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "NOWP"

    .line 79
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;->a:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    .line 81
    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4352"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
