.class Lcom/samsung/android/app/music/activity/AboutActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$2;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity$2;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Lcom/samsung/android/app/music/activity/AboutActivity;Z)Z

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$2;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Lcom/samsung/android/app/music/activity/AboutActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$2;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
