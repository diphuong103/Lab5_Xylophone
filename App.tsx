import { StatusBar } from 'expo-status-bar';
import { useState } from 'react';
import {
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';

const ANSWERS = [
  'It is certain.',
  'Without a doubt.',
  'Most likely.',
  'Ask again later.',
  'Cannot predict now.',
  'Don’t count on it.',
  'My reply is no.',
  'Very doubtful.',
] as const;

function randomAnswerIndex() {
  return Math.floor(Math.random() * ANSWERS.length);
}

export default function App() {
  const [answerIndex, setAnswerIndex] = useState(0);

  function askMagic8Ball() {
    setAnswerIndex(randomAnswerIndex());
  }

  return (
    <View style={styles.container}>
      <StatusBar style="light" />

      <Text style={styles.title}>Magic 8 Ball</Text>
      <Text style={styles.subtitle}>Ask a question and tap the ball</Text>

      <Pressable
        accessibilityRole="button"
        accessibilityLabel="Ask the Magic 8 Ball"
        onPress={askMagic8Ball}
        style={({ pressed }) => [
          styles.ball,
          pressed && styles.ballPressed,
        ]}
      >
        <View style={styles.answerWindow}>
          <Text style={styles.answer}>{ANSWERS[answerIndex]}</Text>
        </View>
      </Pressable>

      <Text style={styles.hint}>Tap to ask again</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#101827',
    paddingHorizontal: 24,
  },
  title: {
    color: '#f7c948',
    fontSize: 38,
    fontWeight: '800',
    letterSpacing: 1,
  },
  subtitle: {
    color: '#b8c1d1',
    fontSize: 16,
    marginTop: 8,
    marginBottom: 36,
  },
  ball: {
    width: 280,
    height: 280,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 140,
    backgroundColor: '#080b12',
    borderColor: '#293347',
    borderWidth: 8,
    shadowColor: '#000000',
    shadowOffset: { width: 0, height: 10 },
    shadowOpacity: 0.4,
    shadowRadius: 18,
    elevation: 12,
  },
  ballPressed: {
    transform: [{ scale: 0.96 }],
    borderColor: '#f7c948',
  },
  answerWindow: {
    width: 126,
    height: 126,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 18,
    borderRadius: 63,
    backgroundColor: '#253b73',
    borderColor: '#405da1',
    borderWidth: 2,
  },
  answer: {
    color: '#ffffff',
    fontSize: 15,
    fontWeight: '700',
    lineHeight: 20,
    textAlign: 'center',
  },
  hint: {
    color: '#8e9ab0',
    fontSize: 14,
    marginTop: 28,
  },
});
