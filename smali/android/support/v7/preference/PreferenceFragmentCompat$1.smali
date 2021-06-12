.class Landroid/support/v7/preference/PreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 191
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$1;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 194
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$1;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$100(Landroid/support/v7/preference/PreferenceFragmentCompat;)V

    :goto_0
    return-void
.end method
