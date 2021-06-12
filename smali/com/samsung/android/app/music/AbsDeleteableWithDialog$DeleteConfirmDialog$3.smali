.class Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "tab_menu_list"

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
