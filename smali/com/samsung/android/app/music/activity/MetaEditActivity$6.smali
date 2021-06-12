.class Lcom/samsung/android/app/music/activity/MetaEditActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$6;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$6;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$6;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->k(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
