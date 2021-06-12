.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "tab_menu_list"

    .line 78
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c()V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
