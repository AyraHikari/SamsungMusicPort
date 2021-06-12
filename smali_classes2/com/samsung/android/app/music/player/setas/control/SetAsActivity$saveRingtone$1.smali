.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->h()V
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

    .line 350
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->finish()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 357
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b()V

    :cond_0
    return-void
.end method
