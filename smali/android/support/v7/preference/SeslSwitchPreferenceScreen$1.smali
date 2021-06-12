.class Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SeslSwitchPreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SeslSwitchPreferenceScreen;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 126
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    return p3

    :cond_2
    return p2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
