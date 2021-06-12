.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;->a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;->a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    const v1, 0x7f130125

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;->a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    const v1, 0x7f130120

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
