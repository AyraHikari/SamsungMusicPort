.class public final Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 4

    .line 169
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 170
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/main/MainActivity;->access$getMainActivityTasks$p(Lcom/samsung/android/app/music/main/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 508
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 172
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/main/MainActivityTask;->g(Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result v2

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 173
    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
