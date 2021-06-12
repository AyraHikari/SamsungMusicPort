.class public final Lcom/samsung/android/app/music/navigate/NaviUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/navigate/NaviUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/navigate/NaviUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/navigate/NaviUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/navigate/NaviUtils;->a:Lcom/samsung/android/app/music/navigate/NaviUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x24000000

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "com.samsung.android.app.music.action.navigate"

    .line 28
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_list_type"

    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "key_keyword"

    .line 30
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_title"

    .line 31
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string p0, "extra_bundle"

    .line 32
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static final a(Landroid/content/Intent;)Lcom/samsung/android/app/music/navigate/NaviData;
    .locals 4

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_list_type"

    const/4 v1, -0x1

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_keyword"

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_title"

    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_bundle"

    .line 41
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 43
    new-instance v3, Lcom/samsung/android/app/music/navigate/NaviData;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/android/app/music/navigate/NaviData;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public static final c(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.app.music.action.navigate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_list_type"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "key_keyword"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "key_title"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "extra_bundle"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method
