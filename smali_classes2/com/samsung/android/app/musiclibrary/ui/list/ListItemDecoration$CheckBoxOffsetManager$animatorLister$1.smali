.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V

    return-void
.end method
