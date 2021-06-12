.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onSharedPreferenceChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onSharedPreferenceChangeListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "tab_menu_list"

    .line 102
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onSharedPreferenceChangeListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
