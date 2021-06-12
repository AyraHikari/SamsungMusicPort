.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;
.super Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ToneGroup"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SetAs-SetAsActivity"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->sendAccessibilityEvent(I)V

    :cond_0
    const v0, 0x7f13054f

    if-ne p1, v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b()V

    :cond_1
    return-void
.end method
