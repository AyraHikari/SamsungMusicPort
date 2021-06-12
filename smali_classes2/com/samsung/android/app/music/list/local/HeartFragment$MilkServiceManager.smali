.class final Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MilkServiceManager"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private final b:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 826
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 827
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->b:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object p0
.end method


# virtual methods
.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 839
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->b:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->b:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Landroid/content/ServiceConnection;)V

    return-void
.end method
